(declare-fun b_ack!21 () (_ BitVec 64))
(declare-fun a_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!21))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!21)
                       ((_ to_fp 11 53) b_ack!21))
               ((_ to_fp 11 53) b_ack!21))
       ((_ to_fp 11 53) b_ack!21)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!21))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!21)
                       ((_ to_fp 11 53) b_ack!21))
               ((_ to_fp 11 53) b_ack!21))
       ((_ to_fp 11 53) b_ack!21)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4024000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!22)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
