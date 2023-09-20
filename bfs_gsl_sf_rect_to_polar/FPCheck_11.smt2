(declare-fun a_ack!32 () (_ BitVec 64))
(declare-fun b_ack!31 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!32))
            (fp.abs ((_ to_fp 11 53) b_ack!31)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!32))
            (fp.abs ((_ to_fp 11 53) b_ack!31)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!31))
          (fp.abs ((_ to_fp 11 53) b_ack!31)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!31))
          (fp.abs ((_ to_fp 11 53) b_ack!31)))))

(check-sat)
(exit)
