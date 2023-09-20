(declare-fun x1_ack!985 () (_ BitVec 64))
(declare-fun x0_ack!991 () (_ BitVec 64))
(declare-fun y0_ack!986 () (_ BitVec 64))
(declare-fun x_ack!989 () (_ BitVec 64))
(declare-fun y_ack!990 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun z3_ack!988 () (_ BitVec 64))
(declare-fun z0_ack!987 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!991) ((_ to_fp 11 53) x1_ack!985))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!986) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!989) ((_ to_fp 11 53) x0_ack!991))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!989) ((_ to_fp 11 53) x1_ack!985))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!990) ((_ to_fp 11 53) y0_ack!986))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!990) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!989) ((_ to_fp 11 53) x0_ack!991))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!989) ((_ to_fp 11 53) x1_ack!985)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!990) ((_ to_fp 11 53) y0_ack!986))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!990) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!985)
                       ((_ to_fp 11 53) x0_ack!991))
               ((_ to_fp 11 53) x0_ack!991))
       ((_ to_fp 11 53) x1_ack!985)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!985)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!985)
                       ((_ to_fp 11 53) x0_ack!991)))
       ((_ to_fp 11 53) x0_ack!991)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!986))
               ((_ to_fp 11 53) y0_ack!986))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!986)))
       ((_ to_fp 11 53) y0_ack!986)))
(assert (FPCHECK_FSUB_UNDERFLOW z0_ack!987 z3_ack!988))

(check-sat)
(exit)
