(declare-fun a_ack!46 () (_ BitVec 64))
(declare-fun b_ack!45 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!46)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!45) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!46))
            (fp.abs ((_ to_fp 11 53) b_ack!45)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!46))
            (fp.abs ((_ to_fp 11 53) b_ack!45)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!45))
          (fp.abs ((_ to_fp 11 53) b_ack!45)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!45))
          (fp.abs ((_ to_fp 11 53) b_ack!45)))))

(check-sat)
(exit)
