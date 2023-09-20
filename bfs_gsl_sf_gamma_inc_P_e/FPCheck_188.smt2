(declare-fun a_ack!540 () (_ BitVec 64))
(declare-fun b_ack!539 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!540) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!539) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!539) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!539) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!539)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!540)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!540) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!540) ((_ to_fp 11 53) b_ack!539)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!540)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc999999999999a)
                    ((_ to_fp 11 53) b_ack!539)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!540) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!539)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!540)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!539)
                       ((_ to_fp 11 53) a_ack!540))
               ((_ to_fp 11 53) a_ack!540))
       ((_ to_fp 11 53) b_ack!539)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!539)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!539)
                       ((_ to_fp 11 53) a_ack!540)))
       ((_ to_fp 11 53) a_ack!540)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!539)
          ((_ to_fp 11 53) a_ack!540))
  a_ack!540))

(check-sat)
(exit)
