(declare-fun c_ack!370 () (_ BitVec 64))
(declare-fun a_ack!371 () (_ BitVec 32))
(declare-fun b_ack!369 () (_ BitVec 32))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!370))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!369 a_ack!371)))
(assert (not (bvslt a_ack!371 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!370) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!369))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!370))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!370))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!370)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!370))
                           (fp.abs ((_ to_fp 11 53) c_ack!370)))
                   (fp.abs ((_ to_fp 11 53) c_ack!370)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!370)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!370)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!370))
                           (fp.abs ((_ to_fp 11 53) c_ack!370)))
                   (fp.abs ((_ to_fp 11 53) c_ack!370)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!370)))))

(check-sat)
(exit)
