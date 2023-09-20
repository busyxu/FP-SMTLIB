(declare-fun a_ack!2753 () (_ BitVec 32))
(declare-fun b_ack!2751 () (_ BitVec 32))
(declare-fun c_ack!2752 () (_ BitVec 64))
(assert (not (bvslt a_ack!2753 #x00000000)))
(assert (not (bvslt b_ack!2751 a_ack!2753)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2752) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2751)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2752) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2752) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!2752) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2752))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2752)
                       ((_ to_fp 11 53) c_ack!2752))
               ((_ to_fp 11 53) c_ack!2752))
       ((_ to_fp 11 53) c_ack!2752)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2752))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2752)
                       ((_ to_fp 11 53) c_ack!2752))
               ((_ to_fp 11 53) c_ack!2752))
       ((_ to_fp 11 53) c_ack!2752)))

(check-sat)
(exit)
