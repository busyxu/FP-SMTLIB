(declare-fun x1_ack!273 () (_ BitVec 64))
(declare-fun x0_ack!277 () (_ BitVec 64))
(declare-fun y0_ack!274 () (_ BitVec 64))
(declare-fun x_ack!275 () (_ BitVec 64))
(declare-fun y_ack!276 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!277) ((_ to_fp 11 53) x1_ack!273))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!274) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!275) ((_ to_fp 11 53) x0_ack!277))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!275) ((_ to_fp 11 53) x1_ack!273))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!276) ((_ to_fp 11 53) y0_ack!274))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!276) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!275) ((_ to_fp 11 53) x0_ack!277))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!275) ((_ to_fp 11 53) x1_ack!273))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!276) ((_ to_fp 11 53) y0_ack!274))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!276) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!276)
          ((_ to_fp 11 53) y0_ack!274))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!274))))

(check-sat)
(exit)
