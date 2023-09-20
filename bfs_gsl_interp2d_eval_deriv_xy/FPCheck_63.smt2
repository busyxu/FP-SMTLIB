(declare-fun x1_ack!695 () (_ BitVec 64))
(declare-fun x0_ack!701 () (_ BitVec 64))
(declare-fun y0_ack!696 () (_ BitVec 64))
(declare-fun x_ack!699 () (_ BitVec 64))
(declare-fun y_ack!700 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun z3_ack!698 () (_ BitVec 64))
(declare-fun z0_ack!697 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!701) ((_ to_fp 11 53) x1_ack!695))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!696) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!699) ((_ to_fp 11 53) x0_ack!701))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!699) ((_ to_fp 11 53) x1_ack!695))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!700) ((_ to_fp 11 53) y0_ack!696))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!700) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!699) ((_ to_fp 11 53) x0_ack!701))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!699) ((_ to_fp 11 53) x1_ack!695))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!700) ((_ to_fp 11 53) y0_ack!696))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!700) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!695)
                       ((_ to_fp 11 53) x0_ack!701))
               ((_ to_fp 11 53) x0_ack!701))
       ((_ to_fp 11 53) x1_ack!695)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!695)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!695)
                       ((_ to_fp 11 53) x0_ack!701)))
       ((_ to_fp 11 53) x0_ack!701)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!696))
               ((_ to_fp 11 53) y0_ack!696))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!696)))
       ((_ to_fp 11 53) y0_ack!696)))
(assert (FPCHECK_FSUB_ACCURACY z0_ack!697 z3_ack!698))

(check-sat)
(exit)
