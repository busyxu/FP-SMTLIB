(declare-fun b_ack!107 () (_ BitVec 32))
(declare-fun a_ack!109 () (_ BitVec 32))
(declare-fun c_ack!108 () (_ BitVec 64))
(assert (not (bvslt b_ack!107 #x00000000)))
(assert (not (bvslt a_ack!109 #x00000000)))
(assert (= #x00000000 a_ack!109))
(assert (not (bvslt b_ack!107 #x00000000)))
(assert (not (= #x00000000 b_ack!107)))
(assert (not (= #x00000001 b_ack!107)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!108))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!107))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!108))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!108))))))
  (not a!1)))
(assert (bvslt #x00000002 b_ack!107))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!108)
                                   ((_ to_fp 11 53) c_ack!108))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.gt a!1
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!108))))))
  (not a!2))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!108))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))

(check-sat)
(exit)
