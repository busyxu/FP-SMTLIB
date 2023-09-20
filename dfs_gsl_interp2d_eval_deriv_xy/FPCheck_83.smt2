(declare-fun x1_ack!981 () (_ BitVec 64))
(declare-fun x0_ack!989 () (_ BitVec 64))
(declare-fun y0_ack!982 () (_ BitVec 64))
(declare-fun x_ack!987 () (_ BitVec 64))
(declare-fun y_ack!988 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!985 () (_ BitVec 64))
(declare-fun z1_ack!984 () (_ BitVec 64))
(declare-fun z3_ack!986 () (_ BitVec 64))
(declare-fun z0_ack!983 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!989) ((_ to_fp 11 53) x1_ack!981))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!982) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!987) ((_ to_fp 11 53) x0_ack!989))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!987) ((_ to_fp 11 53) x1_ack!981))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!988) ((_ to_fp 11 53) y0_ack!982))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!988) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!987) ((_ to_fp 11 53) x0_ack!989))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!987) ((_ to_fp 11 53) x1_ack!981)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!988) ((_ to_fp 11 53) y0_ack!982))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!988) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!981)
                       ((_ to_fp 11 53) x0_ack!989))
               ((_ to_fp 11 53) x0_ack!989))
       ((_ to_fp 11 53) x1_ack!981)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!981)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!981)
                       ((_ to_fp 11 53) x0_ack!989)))
       ((_ to_fp 11 53) x0_ack!989)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!982))
               ((_ to_fp 11 53) y0_ack!982))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!982)))
       ((_ to_fp 11 53) y0_ack!982)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) z0_ack!983)
                  ((_ to_fp 11 53) z3_ack!986))
          ((_ to_fp 11 53) z1_ack!984))
  z2_ack!985))

(check-sat)
(exit)
