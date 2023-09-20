(declare-fun x1_ack!652 () (_ BitVec 64))
(declare-fun x0_ack!656 () (_ BitVec 64))
(declare-fun y0_ack!653 () (_ BitVec 64))
(declare-fun x_ack!654 () (_ BitVec 64))
(declare-fun y_ack!655 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!656) ((_ to_fp 11 53) x1_ack!652))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!653) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!654) ((_ to_fp 11 53) x0_ack!656))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!654) ((_ to_fp 11 53) x1_ack!652))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!655) ((_ to_fp 11 53) y0_ack!653))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!655) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!654) ((_ to_fp 11 53) x0_ack!656))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!654) ((_ to_fp 11 53) x1_ack!652))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!655) ((_ to_fp 11 53) y0_ack!653))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!655) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!652)
                       ((_ to_fp 11 53) x0_ack!656))
               ((_ to_fp 11 53) x0_ack!656))
       ((_ to_fp 11 53) x1_ack!652)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!652)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!652)
                       ((_ to_fp 11 53) x0_ack!656)))
       ((_ to_fp 11 53) x0_ack!656)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!653))
               ((_ to_fp 11 53) y0_ack!653))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!653)))
       ((_ to_fp 11 53) y0_ack!653)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!652)
                  ((_ to_fp 11 53) x0_ack!656)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!653)))))

(check-sat)
(exit)
