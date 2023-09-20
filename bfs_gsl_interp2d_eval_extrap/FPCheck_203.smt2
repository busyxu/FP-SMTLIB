(declare-fun x1_ack!2059 () (_ BitVec 64))
(declare-fun x0_ack!2063 () (_ BitVec 64))
(declare-fun y0_ack!2060 () (_ BitVec 64))
(declare-fun x_ack!2061 () (_ BitVec 64))
(declare-fun y_ack!2062 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2063) ((_ to_fp 11 53) x1_ack!2059))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2060) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2061) ((_ to_fp 11 53) x0_ack!2063))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2061) ((_ to_fp 11 53) x1_ack!2059)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2062) ((_ to_fp 11 53) y0_ack!2060))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2062) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2059)
                       ((_ to_fp 11 53) x0_ack!2063))
               ((_ to_fp 11 53) x0_ack!2063))
       ((_ to_fp 11 53) x1_ack!2059)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2059)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2059)
                       ((_ to_fp 11 53) x0_ack!2063)))
       ((_ to_fp 11 53) x0_ack!2063)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2062)
                       ((_ to_fp 11 53) y0_ack!2060))
               ((_ to_fp 11 53) y0_ack!2060))
       ((_ to_fp 11 53) y_ack!2062)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2062)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2062)
                       ((_ to_fp 11 53) y0_ack!2060)))
       ((_ to_fp 11 53) y0_ack!2060)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2061)
                                   ((_ to_fp 11 53) x0_ack!2063))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2059)
                                   ((_ to_fp 11 53) x0_ack!2063))))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!2062)
                    ((_ to_fp 11 53) y0_ack!2060))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!2060))))))

(check-sat)
(exit)
