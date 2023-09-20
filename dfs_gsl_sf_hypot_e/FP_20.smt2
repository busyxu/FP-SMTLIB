(declare-fun a_ack!268 () (_ BitVec 64))
(declare-fun b_ack!267 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!268) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!268))
            (fp.abs ((_ to_fp 11 53) b_ack!267)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!268))
       (fp.abs ((_ to_fp 11 53) b_ack!267))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!268))
       ((_ to_fp 11 53) #x7fefffffffffffff)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!268))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3cc0000000000000)
                          a!1))
          ((_ to_fp 11 53) #x0010000000000000))))

(check-sat)
(exit)
