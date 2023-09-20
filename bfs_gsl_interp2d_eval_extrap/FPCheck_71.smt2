(declare-fun x1_ack!691 () (_ BitVec 64))
(declare-fun x0_ack!696 () (_ BitVec 64))
(declare-fun y0_ack!692 () (_ BitVec 64))
(declare-fun x_ack!694 () (_ BitVec 64))
(declare-fun y_ack!695 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z3_ack!693 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!696) ((_ to_fp 11 53) x1_ack!691))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!692) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!694) ((_ to_fp 11 53) x0_ack!696))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!694) ((_ to_fp 11 53) x1_ack!691)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!695) ((_ to_fp 11 53) y0_ack!692))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!695) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!695)
                                   ((_ to_fp 11 53) y0_ack!692))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!692))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!694)
                                   ((_ to_fp 11 53) x0_ack!696))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!691)
                                   ((_ to_fp 11 53) x0_ack!696)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW a!2 z3_ack!693))))

(check-sat)
(exit)
