(declare-fun b_ack!89 () (_ BitVec 64))
(declare-fun a_ack!90 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!89) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!89) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!90) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!90)
                       ((_ to_fp 11 53) b_ack!89)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!90)
          ((_ to_fp 11 53) b_ack!89))
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!90)
                  ((_ to_fp 11 53) b_ack!89))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!90)
                  ((_ to_fp 11 53) b_ack!89)))))

(check-sat)
(exit)
