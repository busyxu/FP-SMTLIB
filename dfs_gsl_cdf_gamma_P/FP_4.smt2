(declare-fun b_ack!148 () (_ BitVec 64))
(declare-fun x_ack!149 () (_ BitVec 64))
(declare-fun a_ack!147 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!149)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!148)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!149) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!149)
                    ((_ to_fp 11 53) b_ack!148))
            ((_ to_fp 11 53) a_ack!147))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!147) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!149)
                    ((_ to_fp 11 53) b_ack!148))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!149)
                    ((_ to_fp 11 53) b_ack!148))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!149)
               ((_ to_fp 11 53) b_ack!148))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!147) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!149)
               ((_ to_fp 11 53) b_ack!148))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!147))))

(check-sat)
(exit)
