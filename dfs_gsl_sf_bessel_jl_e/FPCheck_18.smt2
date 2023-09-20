(declare-fun a_ack!75 () (_ BitVec 32))
(declare-fun b_ack!74 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!75 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!74) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!74) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!75))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!74)) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!74)
                           ((_ to_fp 11 53) b_ack!74))
                   ((_ to_fp 11 53) #x3de6124613a86d09))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbe5ae64567f544e4)
                         a!1)
                 ((_ to_fp 11 53) #xbe5ae64567f544e4))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!74)
                           ((_ to_fp 11 53) b_ack!74))
                   ((_ to_fp 11 53) #x3de6124613a86d09))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbe5ae64567f544e4)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbe5ae64567f544e4))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbe5ae64567f544e4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!74)
                                   ((_ to_fp 11 53) b_ack!74))
                           ((_ to_fp 11 53) #x3de6124613a86d09)))))
  (FPCHECK_FADD_UNDERFLOW
    #x3ec71de3a556c734
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!74)
                    ((_ to_fp 11 53) b_ack!74))
            a!1))))

(check-sat)
(exit)
