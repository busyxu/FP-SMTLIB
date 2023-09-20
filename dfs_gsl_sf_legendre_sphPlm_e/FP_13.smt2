(declare-fun b_ack!303 () (_ BitVec 32))
(declare-fun a_ack!305 () (_ BitVec 32))
(declare-fun c_ack!304 () (_ BitVec 64))
(assert (not (bvslt b_ack!303 #x00000000)))
(assert (not (bvslt a_ack!305 b_ack!303)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!304) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!304) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!303))
(assert (not (bvslt a_ack!305 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!304) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!304) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!305)))
(assert (not (= #x00000001 a_ack!305)))
(assert (not (= #x00000002 a_ack!305)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!304) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!305))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x402921fb54442d18))
                          ((_ to_fp 11 53) #x402921fb54442d18))
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!305))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x402921fb54442d18))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!305))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x402921fb54442d18)))
         ((_ to_fp 11 53) #x402921fb54442d18))))

(check-sat)
(exit)
