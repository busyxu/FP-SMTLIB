(declare-fun x1_ack!667 () (_ BitVec 64))
(declare-fun x0_ack!673 () (_ BitVec 64))
(declare-fun y0_ack!668 () (_ BitVec 64))
(declare-fun x_ack!671 () (_ BitVec 64))
(declare-fun y_ack!672 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun z3_ack!670 () (_ BitVec 64))
(declare-fun z0_ack!669 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!673) ((_ to_fp 11 53) x1_ack!667))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!668) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!671) ((_ to_fp 11 53) x0_ack!673))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!671) ((_ to_fp 11 53) x1_ack!667))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!672) ((_ to_fp 11 53) y0_ack!668))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!672) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!671) ((_ to_fp 11 53) x0_ack!673))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!671) ((_ to_fp 11 53) x1_ack!667))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!672) ((_ to_fp 11 53) y0_ack!668))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!672) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!667)
                       ((_ to_fp 11 53) x0_ack!673))
               ((_ to_fp 11 53) x0_ack!673))
       ((_ to_fp 11 53) x1_ack!667)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!667)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!667)
                       ((_ to_fp 11 53) x0_ack!673)))
       ((_ to_fp 11 53) x0_ack!673)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!668))
               ((_ to_fp 11 53) y0_ack!668))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!668)))
       ((_ to_fp 11 53) y0_ack!668)))
(assert (FPCHECK_FSUB_OVERFLOW z0_ack!669 z3_ack!670))

(check-sat)
(exit)
