(declare-fun a_ack!273 () (_ BitVec 32))
(declare-fun b_ack!272 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!273 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!272) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!273)))
(assert (not (= #x00000001 a_ack!273)))
(assert (= #x00000002 a_ack!273))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!272) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!272) ((_ to_fp 11 53) #x2a9965fea53d6e98))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!272) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!272)
                                  ((_ to_fp 11 53) b_ack!272)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!272)
                                   ((_ to_fp 11 53) b_ack!272))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!272)
                           ((_ to_fp 11 53) b_ack!272)))))
  (fp.eq a!1 ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!272)
                                   ((_ to_fp 11 53) b_ack!272))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0))
                   ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!272)
                 ((_ to_fp 11 53) b_ack!272)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!272)
                           ((_ to_fp 11 53) b_ack!272))
                   ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e727e4fb7789f5c)
                         a!1)
                 ((_ to_fp 11 53) #x3e727e4fb7789f5c))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!272)
                           ((_ to_fp 11 53) b_ack!272))
                   ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e727e4fb7789f5c)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e727e4fb7789f5c))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e727e4fb7789f5c)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!272)
                                   ((_ to_fp 11 53) b_ack!272))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!272)
            ((_ to_fp 11 53) b_ack!272))
    a!1)))

(check-sat)
(exit)
