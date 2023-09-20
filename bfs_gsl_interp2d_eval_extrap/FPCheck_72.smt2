(declare-fun x1_ack!703 () (_ BitVec 64))
(declare-fun x0_ack!708 () (_ BitVec 64))
(declare-fun y0_ack!704 () (_ BitVec 64))
(declare-fun x_ack!706 () (_ BitVec 64))
(declare-fun y_ack!707 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!705 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!708) ((_ to_fp 11 53) x1_ack!703))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!704) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!706) ((_ to_fp 11 53) x0_ack!708))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!706) ((_ to_fp 11 53) x1_ack!703)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!707) ((_ to_fp 11 53) y0_ack!704))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!707) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!707)
                                   ((_ to_fp 11 53) y0_ack!704))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!704))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!706)
                                   ((_ to_fp 11 53) x0_ack!708))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!703)
                                   ((_ to_fp 11 53) x0_ack!708)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY a!2 z3_ack!705))))

(check-sat)
(exit)
