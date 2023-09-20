(declare-fun a_ack!500 () (_ BitVec 32))
(declare-fun b_ack!499 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!500 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!499) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!499))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!500)))))
(assert (not (= #x00000000 a_ack!500)))
(assert (not (= #x00000001 a_ack!500)))
(assert (not (= #x00000002 a_ack!500)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!499)
       ((_ to_fp 11 53) roundNearestTiesToEven a_ack!500)))
(assert (FPCHECK_FINVALID_LOG
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!499)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!500))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!499)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!500))))

(check-sat)
(exit)
