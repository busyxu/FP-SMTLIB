(declare-fun x1_ack!2671 () (_ BitVec 64))
(declare-fun x0_ack!2675 () (_ BitVec 64))
(declare-fun y0_ack!2672 () (_ BitVec 64))
(declare-fun x_ack!2673 () (_ BitVec 64))
(declare-fun y_ack!2674 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2675) ((_ to_fp 11 53) x1_ack!2671))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2672) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2673) ((_ to_fp 11 53) x0_ack!2675))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2673) ((_ to_fp 11 53) x1_ack!2671))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2674) ((_ to_fp 11 53) y0_ack!2672))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2674) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2671)
                       ((_ to_fp 11 53) x0_ack!2675))
               ((_ to_fp 11 53) x0_ack!2675))
       ((_ to_fp 11 53) x1_ack!2671)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2671)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2671)
                       ((_ to_fp 11 53) x0_ack!2675)))
       ((_ to_fp 11 53) x0_ack!2675)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2672))
               ((_ to_fp 11 53) y0_ack!2672))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2672)))
       ((_ to_fp 11 53) y0_ack!2672)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2673)
                  ((_ to_fp 11 53) x0_ack!2675))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2671)
                  ((_ to_fp 11 53) x0_ack!2675)))))

(check-sat)
(exit)
