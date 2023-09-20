(declare-fun a_ack!856 () (_ BitVec 32))
(declare-fun b_ack!854 () (_ BitVec 32))
(declare-fun c_ack!855 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!856 #x00000000)))
(assert (not (bvslt b_ack!854 a_ack!856)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!855) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!854) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!855) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!854)))
(assert (= #x00000000 b_ack!854))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!855))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!855))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!855))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!855))
            ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!855))
                           (fp.abs ((_ to_fp 11 53) c_ack!855))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (FPCHECK_FSUB_ACCURACY a!2 #x3ff0000000000000))))

(check-sat)
(exit)
