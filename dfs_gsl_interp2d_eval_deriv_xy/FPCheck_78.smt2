(declare-fun x1_ack!900 () (_ BitVec 64))
(declare-fun x0_ack!907 () (_ BitVec 64))
(declare-fun y0_ack!901 () (_ BitVec 64))
(declare-fun x_ack!905 () (_ BitVec 64))
(declare-fun y_ack!906 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!903 () (_ BitVec 64))
(declare-fun z3_ack!904 () (_ BitVec 64))
(declare-fun z0_ack!902 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!907) ((_ to_fp 11 53) x1_ack!900))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!901) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!905) ((_ to_fp 11 53) x0_ack!907))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!905) ((_ to_fp 11 53) x1_ack!900))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!906) ((_ to_fp 11 53) y0_ack!901))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!906) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!905) ((_ to_fp 11 53) x0_ack!907))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!905) ((_ to_fp 11 53) x1_ack!900)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!906) ((_ to_fp 11 53) y0_ack!901))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!906) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!900)
                       ((_ to_fp 11 53) x0_ack!907))
               ((_ to_fp 11 53) x0_ack!907))
       ((_ to_fp 11 53) x1_ack!900)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!900)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!900)
                       ((_ to_fp 11 53) x0_ack!907)))
       ((_ to_fp 11 53) x0_ack!907)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!901))
               ((_ to_fp 11 53) y0_ack!901))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!901)))
       ((_ to_fp 11 53) y0_ack!901)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) z0_ack!902)
          ((_ to_fp 11 53) z3_ack!904))
  z1_ack!903))

(check-sat)
(exit)
