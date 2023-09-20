(declare-fun b_ack!242 () (_ BitVec 32))
(declare-fun a_ack!244 () (_ BitVec 32))
(declare-fun c_ack!243 () (_ BitVec 64))
(assert (not (bvslt b_ack!242 #x00000000)))
(assert (not (bvslt a_ack!244 #x00000000)))
(assert (= #x00000000 a_ack!244))
(assert (not (bvslt b_ack!242 #x00000000)))
(assert (not (= #x00000000 b_ack!242)))
(assert (not (= #x00000001 b_ack!242)))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!243)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!242))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7feccccccccccccc)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!243))))))
(let ((a!2 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!243)))
                  a!1)))
  (not a!2))))
(assert (bvslt #x00000002 b_ack!242))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!243))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!243)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7feccccccccccccc)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!243))))))
  (not (fp.gt (fp.abs a!1) a!2))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!243)))
                  ((_ to_fp 11 53) #x7fcccccccccccccc))))
  (not a!1)))

(check-sat)
(exit)
