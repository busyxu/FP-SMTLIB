(declare-fun a_ack!486 () (_ BitVec 32))
(declare-fun b_ack!485 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!486 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!485) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!485))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!486)))))
(assert (not (= #x00000000 a_ack!486)))
(assert (not (= #x00000001 a_ack!486)))
(assert (not (= #x00000002 a_ack!486)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!485)
       ((_ to_fp 11 53) roundNearestTiesToEven a_ack!486)))
(assert (FPCHECK_FDIV_UNDERFLOW
  b_ack!485
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!486)))

(check-sat)
(exit)
