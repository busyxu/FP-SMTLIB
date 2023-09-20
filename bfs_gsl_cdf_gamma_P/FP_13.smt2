(declare-fun b_ack!249 () (_ BitVec 64))
(declare-fun x_ack!250 () (_ BitVec 64))
(declare-fun a_ack!248 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!250)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!249)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!250) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!250)
               ((_ to_fp 11 53) b_ack!249))
       ((_ to_fp 11 53) a_ack!248)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!250)
                    ((_ to_fp 11 53) b_ack!249))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!250)
                    ((_ to_fp 11 53) b_ack!249))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) x_ack!250)
                ((_ to_fp 11 53) b_ack!249))
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                ((_ to_fp 11 53) a_ack!248))))

(check-sat)
(exit)
