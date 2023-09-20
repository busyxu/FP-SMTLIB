(declare-fun a_ack!629 () (_ BitVec 32))
(declare-fun b_ack!628 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!629 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!628) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!628))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!629)))))
(assert (not (= #x00000000 a_ack!629)))
(assert (not (= #x00000001 a_ack!629)))
(assert (not (= #x00000002 a_ack!629)))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!628)
            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!629))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!628)
            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!629))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!628)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #xc024000000000000)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!629))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!629)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!628))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
