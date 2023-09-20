(declare-fun c_ack!68 () (_ BitVec 64))
(declare-fun b_ack!67 () (_ BitVec 64))
(declare-fun a_ack!69 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!67))
            (fp.abs ((_ to_fp 11 53) c_ack!68)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!69)) (fp.abs ((_ to_fp 11 53) c_ack!68))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!69))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!69))
          (fp.abs ((_ to_fp 11 53) a_ack!69)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!69))
          (fp.abs ((_ to_fp 11 53) a_ack!69)))))

(check-sat)
(exit)
