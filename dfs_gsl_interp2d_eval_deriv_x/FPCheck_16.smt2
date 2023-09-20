(declare-fun x1_ack!147 () (_ BitVec 64))
(declare-fun x0_ack!151 () (_ BitVec 64))
(declare-fun y0_ack!148 () (_ BitVec 64))
(declare-fun x_ack!149 () (_ BitVec 64))
(declare-fun y_ack!150 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!151) ((_ to_fp 11 53) x1_ack!147))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!148) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!149) ((_ to_fp 11 53) x0_ack!151))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!149) ((_ to_fp 11 53) x1_ack!147))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!150) ((_ to_fp 11 53) y0_ack!148))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!150) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!149) ((_ to_fp 11 53) x0_ack!151))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!149) ((_ to_fp 11 53) x1_ack!147))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!150) ((_ to_fp 11 53) y0_ack!148))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!150) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!147)
                       ((_ to_fp 11 53) x0_ack!151))
               ((_ to_fp 11 53) x0_ack!151))
       ((_ to_fp 11 53) x1_ack!147)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!147)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!147)
                       ((_ to_fp 11 53) x0_ack!151)))
       ((_ to_fp 11 53) x0_ack!151)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!148))
               ((_ to_fp 11 53) y0_ack!148))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!148)))
       ((_ to_fp 11 53) y0_ack!148)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!150)
          ((_ to_fp 11 53) y0_ack!148))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!148))))

(check-sat)
(exit)
