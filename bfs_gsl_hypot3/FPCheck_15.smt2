(declare-fun c_ack!65 () (_ BitVec 64))
(declare-fun b_ack!64 () (_ BitVec 64))
(declare-fun a_ack!66 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!64))
            (fp.abs ((_ to_fp 11 53) c_ack!65)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!66)) (fp.abs ((_ to_fp 11 53) c_ack!65))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!66))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!66))
          (fp.abs ((_ to_fp 11 53) a_ack!66)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!66))
          (fp.abs ((_ to_fp 11 53) a_ack!66)))))

(check-sat)
(exit)
