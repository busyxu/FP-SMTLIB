(declare-fun a_ack!43 () (_ BitVec 64))
(declare-fun b_ack!42 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) a_ack!43) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!42) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!43)) (fp.abs ((_ to_fp 11 53) b_ack!42))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!43))
            (fp.abs ((_ to_fp 11 53) b_ack!42)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!43))
          (fp.abs ((_ to_fp 11 53) b_ack!42)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!43))
          (fp.abs ((_ to_fp 11 53) b_ack!42)))))

(check-sat)
(exit)
