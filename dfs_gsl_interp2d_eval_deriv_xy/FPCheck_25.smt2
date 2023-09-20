(declare-fun x1_ack!278 () (_ BitVec 64))
(declare-fun x0_ack!286 () (_ BitVec 64))
(declare-fun y0_ack!279 () (_ BitVec 64))
(declare-fun x_ack!284 () (_ BitVec 64))
(declare-fun y_ack!285 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!282 () (_ BitVec 64))
(declare-fun z1_ack!281 () (_ BitVec 64))
(declare-fun z3_ack!283 () (_ BitVec 64))
(declare-fun z0_ack!280 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!286) ((_ to_fp 11 53) x1_ack!278))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!279) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!284) ((_ to_fp 11 53) x0_ack!286))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!284) ((_ to_fp 11 53) x1_ack!278))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!285) ((_ to_fp 11 53) y0_ack!279))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!285) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!284) ((_ to_fp 11 53) x0_ack!286))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!284) ((_ to_fp 11 53) x1_ack!278))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!285) ((_ to_fp 11 53) y0_ack!279))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!285) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!278)
                       ((_ to_fp 11 53) x0_ack!286))
               ((_ to_fp 11 53) x0_ack!286))
       ((_ to_fp 11 53) x1_ack!278)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!278)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!278)
                       ((_ to_fp 11 53) x0_ack!286)))
       ((_ to_fp 11 53) x0_ack!286)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!279))
               ((_ to_fp 11 53) y0_ack!279))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!279)))
       ((_ to_fp 11 53) y0_ack!279)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) z0_ack!280)
                  ((_ to_fp 11 53) z3_ack!283))
          ((_ to_fp 11 53) z1_ack!281))
  z2_ack!282))

(check-sat)
(exit)
