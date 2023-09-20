(declare-fun x1_ack!6660 () (_ BitVec 64))
(declare-fun x0_ack!6664 () (_ BitVec 64))
(declare-fun x2_ack!6661 () (_ BitVec 64))
(declare-fun b_ack!6663 () (_ BitVec 64))
(declare-fun a_ack!6662 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6664) ((_ to_fp 11 53) x1_ack!6660)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6660) ((_ to_fp 11 53) x2_ack!6661)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6660)
                       ((_ to_fp 11 53) x0_ack!6664))
               ((_ to_fp 11 53) x0_ack!6664))
       ((_ to_fp 11 53) x1_ack!6660)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6660)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6660)
                       ((_ to_fp 11 53) x0_ack!6664)))
       ((_ to_fp 11 53) x0_ack!6664)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6661)
                       ((_ to_fp 11 53) x1_ack!6660))
               ((_ to_fp 11 53) x1_ack!6660))
       ((_ to_fp 11 53) x2_ack!6661)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6661)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6661)
                       ((_ to_fp 11 53) x1_ack!6660)))
       ((_ to_fp 11 53) x1_ack!6660)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6660)
                    ((_ to_fp 11 53) x0_ack!6664))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6661)
                    ((_ to_fp 11 53) x1_ack!6660))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6662) ((_ to_fp 11 53) b_ack!6663))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6662) ((_ to_fp 11 53) x0_ack!6664))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6663) ((_ to_fp 11 53) x2_ack!6661))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6662) ((_ to_fp 11 53) b_ack!6663))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6662) ((_ to_fp 11 53) x0_ack!6664))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6662) ((_ to_fp 11 53) x1_ack!6660)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6660) ((_ to_fp 11 53) a_ack!6662))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6663) ((_ to_fp 11 53) x1_ack!6660))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6663) ((_ to_fp 11 53) x2_ack!6661))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6661)
                    ((_ to_fp 11 53) x1_ack!6660))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6662)
                  ((_ to_fp 11 53) x1_ack!6660))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6662)
                  ((_ to_fp 11 53) x1_ack!6660)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!6663)
                  ((_ to_fp 11 53) x1_ack!6660))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!6663)
                  ((_ to_fp 11 53) x1_ack!6660)))))

(check-sat)
(exit)
