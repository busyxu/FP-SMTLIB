(declare-fun x1_ack!572 () (_ BitVec 64))
(declare-fun x0_ack!576 () (_ BitVec 64))
(declare-fun y0_ack!573 () (_ BitVec 64))
(declare-fun x_ack!574 () (_ BitVec 64))
(declare-fun y_ack!575 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!576) ((_ to_fp 11 53) x1_ack!572))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!573) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!574) ((_ to_fp 11 53) x0_ack!576))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!574) ((_ to_fp 11 53) x1_ack!572))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!575) ((_ to_fp 11 53) y0_ack!573))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!575) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!574) ((_ to_fp 11 53) x0_ack!576))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!574) ((_ to_fp 11 53) x1_ack!572))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!575) ((_ to_fp 11 53) y0_ack!573))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!575) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!572)
                       ((_ to_fp 11 53) x0_ack!576))
               ((_ to_fp 11 53) x0_ack!576))
       ((_ to_fp 11 53) x1_ack!572)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!572)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!572)
                       ((_ to_fp 11 53) x0_ack!576)))
       ((_ to_fp 11 53) x0_ack!576)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!573))
               ((_ to_fp 11 53) y0_ack!573))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!573)))
       ((_ to_fp 11 53) y0_ack!573)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!572)
          ((_ to_fp 11 53) x0_ack!576))))

(check-sat)
(exit)
