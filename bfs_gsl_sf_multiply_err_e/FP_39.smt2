(declare-fun a_ack!551 () (_ BitVec 64))
(declare-fun c_ack!550 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!551) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!550) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!551))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!550))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!551))
            (fp.abs ((_ to_fp 11 53) c_ack!550)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!551))
            (fp.abs ((_ to_fp 11 53) c_ack!550)))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!550))
            ((_ to_fp 11 53) #x5feccccccccccccc))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!550))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feffffffffffffb)
               (fp.abs ((_ to_fp 11 53) c_ack!550)))))

(check-sat)
(exit)
