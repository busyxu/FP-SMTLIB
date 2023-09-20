(declare-fun x1_ack!752 () (_ BitVec 64))
(declare-fun x0_ack!760 () (_ BitVec 64))
(declare-fun y0_ack!753 () (_ BitVec 64))
(declare-fun x_ack!758 () (_ BitVec 64))
(declare-fun y_ack!759 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!756 () (_ BitVec 64))
(declare-fun z1_ack!755 () (_ BitVec 64))
(declare-fun z3_ack!757 () (_ BitVec 64))
(declare-fun z0_ack!754 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!760) ((_ to_fp 11 53) x1_ack!752))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!753) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!758) ((_ to_fp 11 53) x0_ack!760))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!758) ((_ to_fp 11 53) x1_ack!752))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!759) ((_ to_fp 11 53) y0_ack!753))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!759) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!758) ((_ to_fp 11 53) x0_ack!760))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!758) ((_ to_fp 11 53) x1_ack!752))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!759) ((_ to_fp 11 53) y0_ack!753))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!759) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!752)
                       ((_ to_fp 11 53) x0_ack!760))
               ((_ to_fp 11 53) x0_ack!760))
       ((_ to_fp 11 53) x1_ack!752)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!752)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!752)
                       ((_ to_fp 11 53) x0_ack!760)))
       ((_ to_fp 11 53) x0_ack!760)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!753))
               ((_ to_fp 11 53) y0_ack!753))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!753)))
       ((_ to_fp 11 53) y0_ack!753)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) z0_ack!754)
                  ((_ to_fp 11 53) z3_ack!757))
          ((_ to_fp 11 53) z1_ack!755))
  z2_ack!756))

(check-sat)
(exit)
