(declare-fun b_ack!276 () (_ BitVec 64))
(declare-fun x_ack!277 () (_ BitVec 64))
(declare-fun a_ack!275 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!277)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!276)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!277) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!277)
               ((_ to_fp 11 53) b_ack!276))
       ((_ to_fp 11 53) a_ack!275)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!277)
                    ((_ to_fp 11 53) b_ack!276))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!277)
                    ((_ to_fp 11 53) b_ack!276))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!277)
                     ((_ to_fp 11 53) b_ack!276))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!275)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!275) ((_ to_fp 11 53) #x412e848000000000)))

(check-sat)
(exit)
