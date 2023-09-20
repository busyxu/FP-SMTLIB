(declare-fun c_ack!416 () (_ BitVec 64))
(declare-fun b_ack!415 () (_ BitVec 64))
(declare-fun a_ack!417 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!415))
       (fp.abs ((_ to_fp 11 53) c_ack!416))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!417))
            (fp.abs ((_ to_fp 11 53) b_ack!415)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!415))
       (fp.abs ((_ to_fp 11 53) c_ack!416))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!415))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!417))
          (fp.abs ((_ to_fp 11 53) b_ack!415)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!417))
          (fp.abs ((_ to_fp 11 53) b_ack!415)))))

(check-sat)
(exit)
