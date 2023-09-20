(declare-fun x1_ack!411 () (_ BitVec 64))
(declare-fun x0_ack!415 () (_ BitVec 64))
(declare-fun y0_ack!412 () (_ BitVec 64))
(declare-fun x_ack!413 () (_ BitVec 64))
(declare-fun y_ack!414 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!415) ((_ to_fp 11 53) x1_ack!411))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!412) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!413) ((_ to_fp 11 53) x0_ack!415))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!413) ((_ to_fp 11 53) x1_ack!411))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!414) ((_ to_fp 11 53) y0_ack!412))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!414) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!413) ((_ to_fp 11 53) x0_ack!415))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!413) ((_ to_fp 11 53) x1_ack!411))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!414) ((_ to_fp 11 53) y0_ack!412))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!414) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!411)
          ((_ to_fp 11 53) x0_ack!415))))

(check-sat)
(exit)
