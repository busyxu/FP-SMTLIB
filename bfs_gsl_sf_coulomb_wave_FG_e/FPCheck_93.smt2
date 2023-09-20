(declare-fun b_ack!575 () (_ BitVec 64))
(declare-fun c_ack!576 () (_ BitVec 64))
(declare-fun d_ack!577 () (_ BitVec 32))
(declare-fun a_ack!578 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!575) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!576) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!576)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!577))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!575) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!578)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!578))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!578)
                       ((_ to_fp 11 53) a_ack!578))
               ((_ to_fp 11 53) a_ack!578))
       ((_ to_fp 11 53) a_ack!578)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!578))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!578)
                       ((_ to_fp 11 53) a_ack!578))
               ((_ to_fp 11 53) a_ack!578))
       ((_ to_fp 11 53) a_ack!578)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!578)
                       ((_ to_fp 11 53) a_ack!578)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
