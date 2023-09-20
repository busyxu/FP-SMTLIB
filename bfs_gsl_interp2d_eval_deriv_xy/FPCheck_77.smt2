(declare-fun x1_ack!901 () (_ BitVec 64))
(declare-fun x0_ack!905 () (_ BitVec 64))
(declare-fun y0_ack!902 () (_ BitVec 64))
(declare-fun x_ack!903 () (_ BitVec 64))
(declare-fun y_ack!904 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!905) ((_ to_fp 11 53) x1_ack!901))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!902) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!903) ((_ to_fp 11 53) x0_ack!905))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!903) ((_ to_fp 11 53) x1_ack!901))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!904) ((_ to_fp 11 53) y0_ack!902))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!904) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!903) ((_ to_fp 11 53) x0_ack!905))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!903) ((_ to_fp 11 53) x1_ack!901)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!904) ((_ to_fp 11 53) y0_ack!902))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!904) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!901)
                       ((_ to_fp 11 53) x0_ack!905))
               ((_ to_fp 11 53) x0_ack!905))
       ((_ to_fp 11 53) x1_ack!901)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!901)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!901)
                       ((_ to_fp 11 53) x0_ack!905)))
       ((_ to_fp 11 53) x0_ack!905)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!902))
               ((_ to_fp 11 53) y0_ack!902))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!902)))
       ((_ to_fp 11 53) y0_ack!902)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!902))))

(check-sat)
(exit)
