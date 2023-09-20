(declare-fun x1_ack!1943 () (_ BitVec 64))
(declare-fun x0_ack!1948 () (_ BitVec 64))
(declare-fun y0_ack!1944 () (_ BitVec 64))
(declare-fun x_ack!1946 () (_ BitVec 64))
(declare-fun y_ack!1947 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!1945 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1948) ((_ to_fp 11 53) x1_ack!1943))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1944) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1946) ((_ to_fp 11 53) x0_ack!1948))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1946) ((_ to_fp 11 53) x1_ack!1943)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1947) ((_ to_fp 11 53) y0_ack!1944))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1947) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1943)
                       ((_ to_fp 11 53) x0_ack!1948))
               ((_ to_fp 11 53) x0_ack!1948))
       ((_ to_fp 11 53) x1_ack!1943)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1943)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1943)
                       ((_ to_fp 11 53) x0_ack!1948)))
       ((_ to_fp 11 53) x0_ack!1948)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1947)
                       ((_ to_fp 11 53) y0_ack!1944))
               ((_ to_fp 11 53) y0_ack!1944))
       ((_ to_fp 11 53) y_ack!1947)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1947)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1947)
                       ((_ to_fp 11 53) y0_ack!1944)))
       ((_ to_fp 11 53) y0_ack!1944)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!1947)
                                   ((_ to_fp 11 53) y0_ack!1944))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1944))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1946)
                                   ((_ to_fp 11 53) x0_ack!1948))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1943)
                                   ((_ to_fp 11 53) x0_ack!1948)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW a!2 z3_ack!1945))))

(check-sat)
(exit)
