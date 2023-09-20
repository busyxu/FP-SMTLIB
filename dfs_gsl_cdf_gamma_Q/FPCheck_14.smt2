(declare-fun b_ack!85 () (_ BitVec 64))
(declare-fun x_ack!86 () (_ BitVec 64))
(declare-fun a_ack!84 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!86)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!85)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!86) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!86)
                    ((_ to_fp 11 53) b_ack!85))
            ((_ to_fp 11 53) a_ack!84))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!84) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!86)
                    ((_ to_fp 11 53) b_ack!85))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!86)
                    ((_ to_fp 11 53) b_ack!85))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!84) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!86)
                     ((_ to_fp 11 53) b_ack!85))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!84)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!84) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!84) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!84)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!86)
                     ((_ to_fp 11 53) b_ack!85)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!86)
                    ((_ to_fp 11 53) b_ack!85))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!84)
                    ((_ to_fp 11 53) #x7ff8000000000001)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!84) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!86)
                    ((_ to_fp 11 53) b_ack!85))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!84)))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!86)
          ((_ to_fp 11 53) b_ack!85))
  a_ack!84))

(check-sat)
(exit)
