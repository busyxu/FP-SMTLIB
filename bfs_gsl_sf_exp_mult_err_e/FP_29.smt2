(declare-fun c_ack!551 () (_ BitVec 64))
(declare-fun a_ack!552 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!551) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!552) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!552) ((_ to_fp 11 53) #xc076232bdd7abcd2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!552)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!551))))))
  (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241))))

(check-sat)
(exit)
