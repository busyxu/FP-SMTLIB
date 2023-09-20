(declare-fun x1_ack!770 () (_ BitVec 64))
(declare-fun x0_ack!778 () (_ BitVec 64))
(declare-fun y0_ack!771 () (_ BitVec 64))
(declare-fun x_ack!776 () (_ BitVec 64))
(declare-fun y_ack!777 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z2_ack!774 () (_ BitVec 64))
(declare-fun z1_ack!773 () (_ BitVec 64))
(declare-fun z3_ack!775 () (_ BitVec 64))
(declare-fun z0_ack!772 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!778) ((_ to_fp 11 53) x1_ack!770))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!771) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!776) ((_ to_fp 11 53) x0_ack!778))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!776) ((_ to_fp 11 53) x1_ack!770))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!777) ((_ to_fp 11 53) y0_ack!771))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!777) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!776) ((_ to_fp 11 53) x0_ack!778))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!776) ((_ to_fp 11 53) x1_ack!770))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!777) ((_ to_fp 11 53) y0_ack!771))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!777) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!770)
                       ((_ to_fp 11 53) x0_ack!778))
               ((_ to_fp 11 53) x0_ack!778))
       ((_ to_fp 11 53) x1_ack!770)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!770)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!770)
                       ((_ to_fp 11 53) x0_ack!778)))
       ((_ to_fp 11 53) x0_ack!778)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!771))
               ((_ to_fp 11 53) y0_ack!771))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!771)))
       ((_ to_fp 11 53) y0_ack!771)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) z0_ack!772)
                  ((_ to_fp 11 53) z3_ack!775))
          ((_ to_fp 11 53) z1_ack!773))
  z2_ack!774))

(check-sat)
(exit)
