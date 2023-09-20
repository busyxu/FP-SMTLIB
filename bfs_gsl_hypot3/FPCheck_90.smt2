(declare-fun c_ack!458 () (_ BitVec 64))
(declare-fun b_ack!457 () (_ BitVec 64))
(declare-fun a_ack!459 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!457))
       (fp.abs ((_ to_fp 11 53) c_ack!458))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!459))
            (fp.abs ((_ to_fp 11 53) b_ack!457)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!457))
       (fp.abs ((_ to_fp 11 53) c_ack!458))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!457))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!457))
          (fp.abs ((_ to_fp 11 53) b_ack!457)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!457))
          (fp.abs ((_ to_fp 11 53) b_ack!457)))))

(check-sat)
(exit)
