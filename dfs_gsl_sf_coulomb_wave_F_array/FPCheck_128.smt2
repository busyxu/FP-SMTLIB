(declare-fun d_ack!922 () (_ BitVec 64))
(declare-fun b_ack!921 () (_ BitVec 32))
(declare-fun a_ack!924 () (_ BitVec 64))
(declare-fun c_ack!923 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) d_ack!922) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 b_ack!921)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!924) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!923)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) #x4042000000000000)
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!923)
                       ((_ to_fp 11 53) c_ack!923)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
