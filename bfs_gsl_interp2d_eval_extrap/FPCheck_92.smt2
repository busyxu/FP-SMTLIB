(declare-fun x1_ack!953 () (_ BitVec 64))
(declare-fun x0_ack!958 () (_ BitVec 64))
(declare-fun y0_ack!954 () (_ BitVec 64))
(declare-fun x_ack!956 () (_ BitVec 64))
(declare-fun y_ack!957 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z2_ack!955 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!958) ((_ to_fp 11 53) x1_ack!953))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!954) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!956) ((_ to_fp 11 53) x0_ack!958))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!956) ((_ to_fp 11 53) x1_ack!953)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!957) ((_ to_fp 11 53) y0_ack!954))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!957) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!956)
                                   ((_ to_fp 11 53) x0_ack!958))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!953)
                                   ((_ to_fp 11 53) x0_ack!958)))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!957)
                                   ((_ to_fp 11 53) y0_ack!954))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!954))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 z2_ack!955)))

(check-sat)
(exit)
