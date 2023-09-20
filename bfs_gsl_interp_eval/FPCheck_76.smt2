(declare-fun x1_ack!737 () (_ BitVec 64))
(declare-fun x0_ack!740 () (_ BitVec 64))
(declare-fun x2_ack!738 () (_ BitVec 64))
(declare-fun xx_ack!739 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!740) ((_ to_fp 11 53) x1_ack!737)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!737) ((_ to_fp 11 53) x2_ack!738)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!737)
                       ((_ to_fp 11 53) x0_ack!740))
               ((_ to_fp 11 53) x0_ack!740))
       ((_ to_fp 11 53) x1_ack!737)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!737)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!737)
                       ((_ to_fp 11 53) x0_ack!740)))
       ((_ to_fp 11 53) x0_ack!740)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!738)
                       ((_ to_fp 11 53) x1_ack!737))
               ((_ to_fp 11 53) x1_ack!737))
       ((_ to_fp 11 53) x2_ack!738)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!738)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!738)
                       ((_ to_fp 11 53) x1_ack!737)))
       ((_ to_fp 11 53) x1_ack!737)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!737)
                    ((_ to_fp 11 53) x0_ack!740))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!738)
                    ((_ to_fp 11 53) x1_ack!737))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!739) ((_ to_fp 11 53) x0_ack!740))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!739) ((_ to_fp 11 53) x2_ack!738))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!739) ((_ to_fp 11 53) x0_ack!740))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!739) ((_ to_fp 11 53) x1_ack!737))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!737)
               ((_ to_fp 11 53) x0_ack!740))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!737)
          ((_ to_fp 11 53) x0_ack!740))))

(check-sat)
(exit)
