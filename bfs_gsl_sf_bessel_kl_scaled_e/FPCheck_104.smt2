(declare-fun a_ack!384 () (_ BitVec 32))
(declare-fun b_ack!383 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!384 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!383) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!384)))
(assert (not (= #x00000001 a_ack!384)))
(assert (not (= #x00000002 a_ack!384)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!383) ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) b_ack!383))
       ((_ to_fp 11 53)
         roundNearestTiesToEven
         (bvadd #x00000001 (bvmul a_ack!384 a_ack!384) a_ack!384))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!384)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!384)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (FPCHECK_FSUB_OVERFLOW a!1 #x4022000000000000)))

(check-sat)
(exit)
