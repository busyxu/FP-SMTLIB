(declare-fun c_ack!815 () (_ BitVec 64))
(declare-fun b_ack!814 () (_ BitVec 64))
(declare-fun a_ack!816 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!814))
            (fp.abs ((_ to_fp 11 53) c_ack!815)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!816))
       (fp.abs ((_ to_fp 11 53) c_ack!815))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!816))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!815))
          (fp.abs ((_ to_fp 11 53) a_ack!816)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!815))
          (fp.abs ((_ to_fp 11 53) a_ack!816)))))

(check-sat)
(exit)
