(declare-fun a_ack!4643 () (_ BitVec 64))
(declare-fun b_ack!4640 () (_ BitVec 64))
(declare-fun c_ack!4641 () (_ BitVec 64))
(declare-fun d_ack!4642 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4643) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4640) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4641) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!4641)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!4641)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!4641) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4641) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!4641))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4643) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4640) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4641) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!4642)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4641)
                       ((_ to_fp 11 53) a_ack!4643))
               ((_ to_fp 11 53) a_ack!4643))
       ((_ to_fp 11 53) c_ack!4641)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!4641)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4641)
                       ((_ to_fp 11 53) a_ack!4643)))
       ((_ to_fp 11 53) a_ack!4643)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4641)
                       ((_ to_fp 11 53) a_ack!4643))
               ((_ to_fp 11 53) b_ack!4640))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4641) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!4641)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!4641)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!4641) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4641) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!4641))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) a_ack!4643))
                           ((_ to_fp 11 53) b_ack!4640))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) a_ack!4643))
                           ((_ to_fp 11 53) b_ack!4640))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.geq (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) a_ack!4643))
                           ((_ to_fp 11 53) b_ack!4640))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.sub roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!4641)
                                  ((_ to_fp 11 53) a_ack!4643))
                          ((_ to_fp 11 53) b_ack!4640))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) a_ack!4643))
                           ((_ to_fp 11 53) b_ack!4640)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) a_ack!4643))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) a_ack!4643))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!4641)
                     ((_ to_fp 11 53) a_ack!4643))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4641)
                    ((_ to_fp 11 53) a_ack!4643))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4641)
                       ((_ to_fp 11 53) a_ack!4643)))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) b_ack!4640))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) b_ack!4640))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!4641)
                     ((_ to_fp 11 53) b_ack!4640))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4641)
                    ((_ to_fp 11 53) b_ack!4640))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4641)
                       ((_ to_fp 11 53) b_ack!4640)))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           ((_ to_fp 11 53) a_ack!4643))
                   ((_ to_fp 11 53) b_ack!4640)))
      (a!17 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!26 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!30 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!39 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7060754242e352)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!1))))
      (a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!17)))
      (a!31 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!30))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!2))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                    a!10))))
      (a!19 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!18)))
      (a!32 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!31))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf92b5df55ed2958)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f926fe278e930ae)
                                   a!3))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                                    (fp.mul roundNearestTiesToEven a!9 a!11)))))
      (a!20 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!19)))
      (a!33 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!32))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb7af73866da4e8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!4))))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                                    (fp.mul roundNearestTiesToEven a!9 a!12)))))
      (a!21 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!20)))
      (a!34 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!33))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                   a!5))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                    (fp.mul roundNearestTiesToEven a!9 a!13)))))
      (a!22 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!21)))
      (a!35 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!34))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           a!6)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!9 a!14)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9))))
      (a!23 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!22)))
      (a!36 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!35))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))
                   (fp.abs ((_ to_fp 11 53) c_ack!4641))))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!9))
                    (fp.abs a!9)))
      (a!24 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!23)))
      (a!37 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!36))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!24)))
      (a!38 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!37)))
      (a!44 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cd0000000000000)
                            (fp.abs (CF_log a!8)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cd0000000000000)
                            (fp.abs (CF_log a!16))))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!25)
                    a!26))
      (a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!38)
                    a!39)))
(let ((a!28 (fp.add roundNearestTiesToEven
                    a!27
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!41 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!29 (fp.div roundNearestTiesToEven
                    a!28
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!42 (fp.div roundNearestTiesToEven
                    a!41
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!43 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (CF_log a!8)
                                    (CF_log a!16))
                            (CF_log a!29))
                    (CF_log a!42)))
      (a!45 (fp.add roundNearestTiesToEven
                    a!44
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cd0000000000000)
                            (fp.abs (CF_log a!29))))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    a!45
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cd0000000000000)
                            (fp.abs (CF_log a!42))))))
  (not (fp.gt (fp.add roundNearestTiesToEven a!43 (fp.abs a!46))
              ((_ to_fp 11 53) #x40862e42fefa39ef))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           ((_ to_fp 11 53) a_ack!4643))
                   ((_ to_fp 11 53) b_ack!4640)))
      (a!17 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!26 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!30 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!39 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7060754242e352)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!1))))
      (a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!17)))
      (a!31 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!30))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!2))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                    a!10))))
      (a!19 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!18)))
      (a!32 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!31))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf92b5df55ed2958)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f926fe278e930ae)
                                   a!3))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                                    (fp.mul roundNearestTiesToEven a!9 a!11)))))
      (a!20 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!19)))
      (a!33 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!32))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb7af73866da4e8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!4))))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                                    (fp.mul roundNearestTiesToEven a!9 a!12)))))
      (a!21 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!20)))
      (a!34 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!33))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                   a!5))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                    (fp.mul roundNearestTiesToEven a!9 a!13)))))
      (a!22 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!21)))
      (a!35 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!34))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           a!6)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!9 a!14)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9))))
      (a!23 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!22)))
      (a!36 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!35))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))
                   (fp.abs ((_ to_fp 11 53) c_ack!4641))))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!9))
                    (fp.abs a!9)))
      (a!24 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!23)))
      (a!37 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!36))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!24)))
      (a!38 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!37)))
      (a!44 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cd0000000000000)
                            (fp.abs (CF_log a!8)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cd0000000000000)
                            (fp.abs (CF_log a!16))))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!25)
                    a!26))
      (a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!38)
                    a!39)))
(let ((a!28 (fp.add roundNearestTiesToEven
                    a!27
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!41 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!29 (fp.div roundNearestTiesToEven
                    a!28
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!42 (fp.div roundNearestTiesToEven
                    a!41
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!43 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (CF_log a!8)
                                    (CF_log a!16))
                            (CF_log a!29))
                    (CF_log a!42)))
      (a!45 (fp.add roundNearestTiesToEven
                    a!44
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cd0000000000000)
                            (fp.abs (CF_log a!29))))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    a!45
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cd0000000000000)
                            (fp.abs (CF_log a!42))))))
  (not (fp.lt (fp.sub roundNearestTiesToEven a!43 (fp.abs a!46))
              ((_ to_fp 11 53) #xc086232bdd7abcd2))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           ((_ to_fp 11 53) a_ack!4643))
                   ((_ to_fp 11 53) b_ack!4640)))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!27 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!32 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7060754242e352)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!1))))
      (a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!19 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!18)))
      (a!33 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!32))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!2))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                    a!10))))
      (a!20 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!19)))
      (a!34 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!33))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf92b5df55ed2958)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f926fe278e930ae)
                                   a!3))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                                    (fp.mul roundNearestTiesToEven a!9 a!11)))))
      (a!21 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!20)))
      (a!35 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!34))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb7af73866da4e8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!4))))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                                    (fp.mul roundNearestTiesToEven a!9 a!12)))))
      (a!22 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!21)))
      (a!36 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!35))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                   a!5))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                    (fp.mul roundNearestTiesToEven a!9 a!13)))))
      (a!23 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!22)))
      (a!37 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!36))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           a!6)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!9 a!14)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9))))
      (a!24 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!23)))
      (a!38 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!37))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))
                   (fp.abs ((_ to_fp 11 53) c_ack!4641))))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!9))
                    (fp.abs a!9)))
      (a!25 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!24)))
      (a!39 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!38))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cd0000000000000)
                            (fp.abs (CF_log a!8)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cd0000000000000)
                            (fp.abs (CF_log a!16)))))
      (a!26 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!25)))
      (a!40 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!39))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!26)
                    a!27))
      (a!42 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!40)
                    a!41)))
(let ((a!29 (fp.add roundNearestTiesToEven
                    a!28
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!43 (fp.add roundNearestTiesToEven
                    a!42
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!30 (fp.div roundNearestTiesToEven
                    a!29
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!44 (fp.div roundNearestTiesToEven
                    a!43
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cd0000000000000)
                            (fp.abs (CF_log a!30))))))
(let ((a!45 (fp.add roundNearestTiesToEven
                    a!31
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cd0000000000000)
                            (fp.abs (CF_log a!44))))))
(let ((a!46 (fp.sub roundNearestTiesToEven
                    (CF_exp (fp.abs a!45))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (CF_exp (fp.abs a!45))))))
  (not (fp.gt ((_ to_fp 11 53) #x3cb0000000000000) a!46))))))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq ((_ to_fp 11 53) c_ack!4641)
                          ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!4641)
                            ((_ to_fp 11 53) a_ack!4643))
                    ((_ to_fp 11 53) b_ack!4640)))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!27 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!31 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!40 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640)))))
      (a!45 (ite (fp.geq (fp.sub roundNearestTiesToEven
                                 ((_ to_fp 11 53) c_ack!4641)
                                 ((_ to_fp 11 53) a_ack!4643))
                         ((_ to_fp 11 53) #x0000000000000000))
                 #x00000001
                 #xffffffff))
      (a!46 (ite (fp.geq (fp.sub roundNearestTiesToEven
                                 ((_ to_fp 11 53) c_ack!4641)
                                 ((_ to_fp 11 53) b_ack!4640))
                         ((_ to_fp 11 53) #x0000000000000000))
                 #x00000001
                 #xffffffff)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7060754242e352)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!2))))
      (a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!19 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!18)))
      (a!32 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!31))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!3))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                    a!11))))
      (a!20 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!19)))
      (a!33 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!32))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf92b5df55ed2958)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f926fe278e930ae)
                                   a!4))))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                                    (fp.mul roundNearestTiesToEven a!10 a!12)))))
      (a!21 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!20)))
      (a!34 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!33))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb7af73866da4e8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!5))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                                    (fp.mul roundNearestTiesToEven a!10 a!13)))))
      (a!22 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!21)))
      (a!35 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!34))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                   a!6))))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                    (fp.mul roundNearestTiesToEven a!10 a!14)))))
      (a!23 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!22)))
      (a!36 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!35))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           a!7)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!10 a!15)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!10))))
      (a!24 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!23)))
      (a!37 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!36))))
(let ((a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!8
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))
                   (fp.abs ((_ to_fp 11 53) c_ack!4641))))
      (a!17 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!10))
                    (fp.abs a!10)))
      (a!25 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!24)))
      (a!38 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!37))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!25)))
      (a!39 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!38))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!26)
                    a!27))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!39)
                    a!40)))
(let ((a!29 (fp.add roundNearestTiesToEven
                    a!28
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!42 (fp.add roundNearestTiesToEven
                    a!41
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!30 (fp.div roundNearestTiesToEven
                    a!29
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!43 (fp.div roundNearestTiesToEven
                    a!42
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!44 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (CF_log a!9)
                                    (CF_log a!17))
                            (CF_log a!30))
                    (CF_log a!43))))
(let ((a!47 (fp.mul roundNearestTiesToEven
                    (CF_exp a!44)
                    (fp.div roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a!45)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a!46))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven a!1 a!47)
              ((_ to_fp 11 53) #x0000000000000000))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7060754242e352)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf92b5df55ed2958)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f926fe278e930ae)
                                   a!3)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb7af73866da4e8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                   a!5)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           a!6)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641))))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))
                   (fp.abs ((_ to_fp 11 53) c_ack!4641)))))
  (fp.lt (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 (CF_log a!8))
         ((_ to_fp 11 53) #x40762e42fefa39ef)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7060754242e352)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf92b5df55ed2958)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f926fe278e930ae)
                                   a!3)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb7af73866da4e8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                   a!5)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           a!6)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641))))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))
                   (fp.abs ((_ to_fp 11 53) c_ack!4641)))))
  (not (fp.gt (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) #x8000000000000000)
                      (CF_log a!8))
              ((_ to_fp 11 53) #xc076232bdd7abcd2))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!9 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq ((_ to_fp 11 53) c_ack!4641)
                          ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!4641)
                            ((_ to_fp 11 53) a_ack!4643))
                    ((_ to_fp 11 53) b_ack!4640)))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!27 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!31 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!40 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640)))))
      (a!45 (ite (fp.geq (fp.sub roundNearestTiesToEven
                                 ((_ to_fp 11 53) c_ack!4641)
                                 ((_ to_fp 11 53) a_ack!4643))
                         ((_ to_fp 11 53) #x0000000000000000))
                 #x00000001
                 #xffffffff))
      (a!46 (ite (fp.geq (fp.sub roundNearestTiesToEven
                                 ((_ to_fp 11 53) c_ack!4641)
                                 ((_ to_fp 11 53) b_ack!4640))
                         ((_ to_fp 11 53) #x0000000000000000))
                 #x00000001
                 #xffffffff)))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7060754242e352)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!1))))
      (a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!19 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!18)))
      (a!32 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!31))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!2))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                    a!11))))
      (a!20 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!19)))
      (a!33 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!32))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf92b5df55ed2958)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f926fe278e930ae)
                                   a!3))))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                                    (fp.mul roundNearestTiesToEven a!10 a!12)))))
      (a!21 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!20)))
      (a!34 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!33))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb7af73866da4e8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!4))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                                    (fp.mul roundNearestTiesToEven a!10 a!13)))))
      (a!22 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!21)))
      (a!35 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!34))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                   a!5))))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                    (fp.mul roundNearestTiesToEven a!10 a!14)))))
      (a!23 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!22)))
      (a!36 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!35))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           a!6)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!10 a!15)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!10))))
      (a!24 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!23)))
      (a!37 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!36))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))
                   (fp.abs ((_ to_fp 11 53) c_ack!4641))))
      (a!17 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!10))
                    (fp.abs a!10)))
      (a!25 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!24)))
      (a!38 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!37))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!25)))
      (a!39 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!38))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!26)
                    a!27))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!39)
                    a!40)))
(let ((a!29 (fp.add roundNearestTiesToEven
                    a!28
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!42 (fp.add roundNearestTiesToEven
                    a!41
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!30 (fp.div roundNearestTiesToEven
                    a!29
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!43 (fp.div roundNearestTiesToEven
                    a!42
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!44 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (CF_log a!8)
                                    (CF_log a!17))
                            (CF_log a!30))
                    (CF_log a!43))))
(let ((a!47 (fp.mul roundNearestTiesToEven
                    (CF_exp a!44)
                    (fp.div roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a!45)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a!46))))))
(let ((a!48 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (CF_log a!8))
                    (CF_log (fp.abs (fp.mul roundNearestTiesToEven a!9 a!47))))))
  (not (fp.gt a!48 ((_ to_fp 11 53) #x40862e2e8418f241)))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!9 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq ((_ to_fp 11 53) c_ack!4641)
                          ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!4641)
                            ((_ to_fp 11 53) a_ack!4643))
                    ((_ to_fp 11 53) b_ack!4640)))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!27 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!31 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
      (a!40 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640)))))
      (a!45 (ite (fp.geq (fp.sub roundNearestTiesToEven
                                 ((_ to_fp 11 53) c_ack!4641)
                                 ((_ to_fp 11 53) a_ack!4643))
                         ((_ to_fp 11 53) #x0000000000000000))
                 #x00000001
                 #xffffffff))
      (a!46 (ite (fp.geq (fp.sub roundNearestTiesToEven
                                 ((_ to_fp 11 53) c_ack!4641)
                                 ((_ to_fp 11 53) b_ack!4640))
                         ((_ to_fp 11 53) #x0000000000000000))
                 #x00000001
                 #xffffffff)))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7060754242e352)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!1))))
      (a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!19 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!18)))
      (a!32 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!31))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!2))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                    a!11))))
      (a!20 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!19)))
      (a!33 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f7060754242e352)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!32))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf92b5df55ed2958)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f926fe278e930ae)
                                   a!3))))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                                    (fp.mul roundNearestTiesToEven a!10 a!12)))))
      (a!21 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!20)))
      (a!34 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!33))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!4641)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb7af73866da4e8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4641)
                                   a!4))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                                    (fp.mul roundNearestTiesToEven a!10 a!13)))))
      (a!22 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!21)))
      (a!35 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f926fe278e930ae)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!34))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                   a!5))))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                    (fp.mul roundNearestTiesToEven a!10 a!14)))))
      (a!23 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!22)))
      (a!36 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf92b5df55ed2958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!35))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4641)
                           a!6)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!10 a!15)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!10))))
      (a!24 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!23)))
      (a!37 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb7af73866da4e8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!36))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!4641)))
                   (fp.abs ((_ to_fp 11 53) c_ack!4641))))
      (a!17 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!10))
                    (fp.abs a!10)))
      (a!25 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!24)))
      (a!38 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!37))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!25)))
      (a!39 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!38))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643))
                            a!26)
                    a!27))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))
                            a!39)
                    a!40)))
(let ((a!29 (fp.add roundNearestTiesToEven
                    a!28
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!42 (fp.add roundNearestTiesToEven
                    a!41
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!30 (fp.div roundNearestTiesToEven
                    a!29
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) a_ack!4643)))))
      (a!43 (fp.div roundNearestTiesToEven
                    a!42
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4641)
                                    ((_ to_fp 11 53) b_ack!4640))))))
(let ((a!44 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (CF_log a!8)
                                    (CF_log a!17))
                            (CF_log a!30))
                    (CF_log a!43))))
(let ((a!47 (fp.mul roundNearestTiesToEven
                    (CF_exp a!44)
                    (fp.div roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a!45)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a!46))))))
(let ((a!48 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (CF_log a!8))
                    (CF_log (fp.abs (fp.mul roundNearestTiesToEven a!9 a!47))))))
  (not (fp.lt a!48 ((_ to_fp 11 53) #xc086231762997524)))))))))))))))))))

(check-sat)
(exit)
