(declare-fun b_ack!4167 () (_ BitVec 64))
(declare-fun a_ack!4168 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sinh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_cosh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!4167) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4168) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4168) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4167) ((_ to_fp 11 53) #x4000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4168) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!4167) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4168) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4167) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4168)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!1)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4168)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!1))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4167))))))
  (not (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe0000000000000)
                                  ((_ to_fp 11 53) b_ack!4167)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4167))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4167)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!4167)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 ((_ to_fp 11 53) b_ack!4167)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe0000000000000)
                                  ((_ to_fp 11 53) b_ack!4167)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4167))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4167)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!4167)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 ((_ to_fp 11 53) b_ack!4167)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4168)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!1))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4168)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4168)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!1)))))
  (fp.eq a!2 (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) a_ack!4168) a!1)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4168)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!1))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!1))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4167)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!1))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4168)
                            a!1)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4167)))))
      (a!43 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4168)
                                    a!1)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4168)
                                    a!1)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!1))
                   a!2))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!4) a!4)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4167))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!8)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!22)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!9)
                            a!8)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!23)
                            a!22)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!24)
                            a!23)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!11)
                            a!10)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!25)
                            a!24)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!26)
                            a!25)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!27)
                            a!26)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!14)
                            a!13)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!28)
                            a!27)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!17)
                            a!16)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!31)
                            a!30)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!32)
                            a!31)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!19)
                                    a!18)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!33)
                            a!32)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!34)
                                    a!33)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4168)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!20 a!19)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!4)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!20 a!19)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!39 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38)))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!3 a!36))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)))
      (a!44 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4168)
                                    a!1)))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41))))
(let ((a!45 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff0000000000000)
                                    (fp.div roundNearestTiesToEven a!42 a!43))
                            a!44)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbff0000000000000)
                            (fp.div roundNearestTiesToEven a!42 a!43)))))
  (fp.eq a!45 a!44))))))))))))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4168)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!1))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!1))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4167)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!1))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4168)
                            a!1)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4167)))))
      (a!43 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4168)
                                    a!1)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4168)
                                    a!1)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!1))
                   a!2))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!4) a!4)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4167))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!8)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!22)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!9)
                            a!8)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!23)
                            a!22)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!24)
                            a!23)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!11)
                            a!10)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!25)
                            a!24)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!26)
                            a!25)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!27)
                            a!26)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!14)
                            a!13)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!28)
                            a!27)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!17)
                            a!16)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!31)
                            a!30)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!32)
                            a!31)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!19)
                                    a!18)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!33)
                            a!32)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!34)
                                    a!33)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4168)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!20 a!19)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!4)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!20 a!19)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!39 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38)))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!3 a!36))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)))
      (a!44 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4168)
                                    a!1)))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41))))
(let ((a!45 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff0000000000000)
                                    (fp.div roundNearestTiesToEven a!42 a!43))
                            a!44)
                    a!44)))
  (fp.eq a!45
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbff0000000000000)
                 (fp.div roundNearestTiesToEven a!42 a!43))))))))))))))))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4167))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4167)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4168)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!2))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!2))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4167)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!2))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4168)
                            a!2)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4167)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4168)
                                    a!2)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4168)
                                    a!2)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4168)
                                   a!2))
                   a!3))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!5) a!5)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4167))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!9)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!23)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!10)
                            a!9)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!24)
                            a!23)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!11)
                            a!10)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!25)
                            a!24)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!26)
                            a!25)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!27)
                            a!26)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!14)
                            a!13)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!28)
                            a!27)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!16)
                            a!15)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!17)
                            a!16)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!31)
                            a!30)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!32)
                            a!31)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!19)
                            a!18)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!33)
                            a!32)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!8 a!20)
                                    a!19)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!34)
                            a!33)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!36 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!8 a!35)
                                    a!34)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!39 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4168)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!21 a!20)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!37 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!5)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!21 a!20)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!22
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!36 a!35)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!40 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!36 a!35)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!39)))
      (a!42 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!36 a!35)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!39))))
(let ((a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!4 a!37))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!38))
                            a!40)))
      (a!45 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!38))
                            a!40)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4168)
                                    a!2)))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    a!41
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!38))
                            a!42))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff0000000000000)
                    (fp.div roundNearestTiesToEven a!43 a!44))
            a!45))))))))))))))))))))))))

(check-sat)
(exit)
