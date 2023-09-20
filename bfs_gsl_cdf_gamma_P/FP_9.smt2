(declare-fun b_ack!108 () (_ BitVec 64))
(declare-fun x_ack!109 () (_ BitVec 64))
(declare-fun a_ack!107 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!109)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!108)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!109) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!109)
                    ((_ to_fp 11 53) b_ack!108))
            ((_ to_fp 11 53) a_ack!107))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!107) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!109)
                    ((_ to_fp 11 53) b_ack!108))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!109)
                    ((_ to_fp 11 53) b_ack!108))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!109)
                    ((_ to_fp 11 53) b_ack!108))
            ((_ to_fp 11 53) #x4034000000000000))))

(check-sat)
(exit)
