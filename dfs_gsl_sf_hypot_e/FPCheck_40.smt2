(declare-fun a_ack!124 () (_ BitVec 64))
(declare-fun b_ack!123 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!124) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!124))
            (fp.abs ((_ to_fp 11 53) b_ack!123)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!124))
            (fp.abs ((_ to_fp 11 53) b_ack!123)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!123))
          (fp.abs ((_ to_fp 11 53) b_ack!123)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!123))
          (fp.abs ((_ to_fp 11 53) b_ack!123)))))

(check-sat)
(exit)
