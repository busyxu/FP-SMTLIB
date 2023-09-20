(declare-fun x1_ack!127 () (_ BitVec 64))
(declare-fun x0_ack!131 () (_ BitVec 64))
(declare-fun y0_ack!128 () (_ BitVec 64))
(declare-fun x_ack!129 () (_ BitVec 64))
(declare-fun y_ack!130 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!131) ((_ to_fp 11 53) x1_ack!127))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!128) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!129) ((_ to_fp 11 53) x0_ack!131))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!129) ((_ to_fp 11 53) x1_ack!127))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!130) ((_ to_fp 11 53) y0_ack!128))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!130) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!127)
                       ((_ to_fp 11 53) x0_ack!131))
               ((_ to_fp 11 53) x0_ack!131))
       ((_ to_fp 11 53) x1_ack!127)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!127)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!127)
                       ((_ to_fp 11 53) x0_ack!131)))
       ((_ to_fp 11 53) x0_ack!131)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!128))
               ((_ to_fp 11 53) y0_ack!128))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!128)))
       ((_ to_fp 11 53) y0_ack!128)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!129)
          ((_ to_fp 11 53) x0_ack!131))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!127)
          ((_ to_fp 11 53) x0_ack!131))))

(check-sat)
(exit)
