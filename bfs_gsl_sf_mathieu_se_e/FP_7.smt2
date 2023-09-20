(declare-fun n_ack!110 () (_ BitVec 32))
(declare-fun a_ack!111 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun z_ack!109 () (_ BitVec 64))
(assert (not (= #x00000000 (bvsrem n_ack!110 #x00000002))))
(assert (not (= #x00000000 n_ack!110)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!111) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.abs (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     n_ack!110)
                                   ((_ to_fp 11 53) z_ack!109))))))
  (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
