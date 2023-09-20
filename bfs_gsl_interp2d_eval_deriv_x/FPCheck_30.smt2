(declare-fun x1_ack!303 () (_ BitVec 64))
(declare-fun x0_ack!308 () (_ BitVec 64))
(declare-fun y0_ack!304 () (_ BitVec 64))
(declare-fun x_ack!306 () (_ BitVec 64))
(declare-fun y_ack!307 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!305 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!308) ((_ to_fp 11 53) x1_ack!303))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!304) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!306) ((_ to_fp 11 53) x0_ack!308))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!306) ((_ to_fp 11 53) x1_ack!303))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!307) ((_ to_fp 11 53) y0_ack!304))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!307) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!306) ((_ to_fp 11 53) x0_ack!308))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!306) ((_ to_fp 11 53) x1_ack!303))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!307) ((_ to_fp 11 53) y0_ack!304))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!307) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!307)
                                   ((_ to_fp 11 53) y0_ack!304))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!304))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!1)
    z0_ack!305)))

(check-sat)
(exit)
